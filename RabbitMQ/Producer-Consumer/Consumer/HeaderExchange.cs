﻿using System.Text;
using RabbitMQ.Client;
using RabbitMQ.Client.Events;

namespace Consumer
{
    public class HeaderExchange
    {

        private readonly string _exchangeName = "order.header";
        private readonly string queueName = "q.invoice";
        private readonly string queueName1 = "q.report";

        private readonly IDictionary<string, object?> bindingHeaders = new Dictionary<string, object?>
            {
                { "x-match", "all" }, // Match all headers
                { "format", "pdf"},
                { "type", "invoice"}
            };

        private readonly IDictionary<string, object?> bindingHeaders2 = new Dictionary<string, object?>
            {
                { "x-match", "all" }, // Match all headers
                { "format", "xls"},
                { "type", "report"}
            };
        private readonly IConnection _connection;

        public HeaderExchange(IConnection connection)
        {
            _connection = connection;
        }

        public async Task ConsumeMessage()
        {
            using var channel = await _connection.CreateChannelAsync();

            await channel.ExchangeDeclareAsync(exchange: _exchangeName, type: ExchangeType.Headers);
            await channel.QueueDeclareAsync(queue: queueName, exclusive: false, autoDelete: false);

            // Bind queue to exchange with headers
            await channel.QueueBindAsync(queue: queueName, exchange: _exchangeName, routingKey: string.Empty, arguments: bindingHeaders);

            var consumer = new AsyncEventingBasicConsumer(channel);

            consumer.ReceivedAsync += (model, ea) =>
            {
                var body = ea.Body.ToArray();
                var message = Encoding.UTF8.GetString(body);
                Console.WriteLine($"[Header Exchange {queueName}] Received: {message}");
                return Task.CompletedTask;
            };

            await channel.BasicConsumeAsync(queueName, autoAck: true, consumer: consumer);
        }
    }
}

