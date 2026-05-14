package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
/* loaded from: classes.dex */
final class zziiu implements zzidj {
    static final zzidj zza = new zziiu();

    private zziiu() {
    }

    @Override // com.google.android.gms.internal.ads.zzidj
    public final boolean zza(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case ConnectionResult.API_DISABLED /* 23 */:
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
            case FirestoreIndexValueWriter.INDEX_TYPE_STRING /* 25 */:
            case 26:
            case 27:
            case 28:
            case 29:
            case FirestoreIndexValueWriter.INDEX_TYPE_BLOB /* 30 */:
            case 31:
                return true;
            default:
                return false;
        }
    }
}
