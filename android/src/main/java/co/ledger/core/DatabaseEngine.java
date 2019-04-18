// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

package co.ledger.core;

/** An interface to implement a custom SQL backend on host side instead of using a native backend. */
public abstract class DatabaseEngine {
    /**
     * Open a connection to a database using the given database name.
     * @params databaseName The name of the database to open
     * @return A connection pool to the given database
     */
    public abstract DatabaseConnectionPool connect(String databaseName);

    /**
     * Get the maximum number of concurrent connection on a single database.
     * @return the maximum number of concurrent connection that the engine is able to open on a single database.
     */
    public abstract int getPoolSize();
}