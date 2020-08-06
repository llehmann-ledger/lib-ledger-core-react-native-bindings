// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from idl.djinni

package co.ledger.core;

public final class AlgorandAssetConfigurationInfo {


    /*package*/ final String assetId;

    /*package*/ final AlgorandAssetParams assetParams;

    public AlgorandAssetConfigurationInfo(
            String assetId,
            AlgorandAssetParams assetParams) {
        this.assetId = assetId;
        this.assetParams = assetParams;
    }

    /** The unique asset ID. Required to re-configure or destroy the asset, set to zero on asset creation. */
    public String getAssetId() {
        return assetId;
    }

    /** The asset configuration options. Empty when destroying the asset. */
    public AlgorandAssetParams getAssetParams() {
        return assetParams;
    }

    @Override
    public String toString() {
        return "AlgorandAssetConfigurationInfo{" +
                "assetId=" + assetId +
                "," + "assetParams=" + assetParams +
        "}";
    }

}