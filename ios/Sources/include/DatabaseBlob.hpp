// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

#ifndef DJINNI_GENERATED_DATABASEBLOB_HPP
#define DJINNI_GENERATED_DATABASEBLOB_HPP

#include <cstdint>
#include <vector>

namespace ledger { namespace core { namespace api {

/** A wrapper around SQL blob type. BLOB (Binary Large Object) is a builtin SQL type to store bytes. */
class DatabaseBlob {
public:
    virtual ~DatabaseBlob() {}

    /**
     * Reads bytes from the blob at the given offset and of the a given length and return them in a byte array.
     * @param offset Start to read bytes from the blob at offset value.
     * @param length Maximum number of byte read from the blob
     */
    virtual std::vector<uint8_t> read(int64_t offset, int64_t length) = 0;

    /**
     * Write the given bytes at the given offset in the BLOB.
     * @return The number of written bytes
     */
    virtual int64_t write(int64_t offset, const std::vector<uint8_t> & data) = 0;

    /**
     * Append the given bytes to the BLOB.
     * @param The data to append to the BLOB
     * @return the number of bytes written
     */
    virtual int64_t append(const std::vector<uint8_t> & data) = 0;

    /**
     * Truncate the BLOB to the length given by the newLen parameter (in bytes).
     * @param newLen The final size of the BLOB
     * @return The number of byte truncated
     */
    virtual int64_t trim(int64_t newLen) = 0;

    /**
     * Get the size of the BLOB.
     * @return the size of the BLOB in bytes.
     */
    virtual int64_t size() = 0;
};

} } }  // namespace ledger::core::api
#endif //DJINNI_GENERATED_DATABASEBLOB_HPP