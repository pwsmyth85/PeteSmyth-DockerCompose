const { Client } = require('pg');

const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'pete',
    password: 'p@ssword1',
    port: 5432, // Default PostgreSQL port
});

client.connect()
    .then(() => console.log('Connected to PostgreSQL database'))
    .catch(error => console.error('Error connecting to PostgreSQL database:', error))
    .finally(() => client.end());
