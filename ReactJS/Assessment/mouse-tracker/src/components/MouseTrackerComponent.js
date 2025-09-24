import React, { useState, useEffect } from "react";

const MouseTracker = () => {
  const [position, setPosition] = useState({ x: 0, y: 0 });

  useEffect(() => {
    const handleMouseMove = (event) => {
      setPosition({
        x: event.clientX,
        y: event.clientY,
      });
    };

    // Add event listener
    window.addEventListener("mousemove", handleMouseMove);

    // Cleanup event listener on unmount
    return () => {
      window.removeEventListener("mousemove", handleMouseMove);
    };
  }, []);

  return (
    <div>
      <h1>Mouse Tracker</h1>
      <p>
        X: {position.x}, Y: {position.y}
      </p>
    </div>
  );
};

export default MouseTracker;
