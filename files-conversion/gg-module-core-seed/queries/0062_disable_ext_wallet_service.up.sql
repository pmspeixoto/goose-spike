INSERT INTO circuit_breakers (
    name,
    enabled,
    description
) VALUES(
    "EXT_WALLET_SERVICE",
    true,
    "Disables calls to externally deployed wallet service"
);
