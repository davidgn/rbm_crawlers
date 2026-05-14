package com.google.android.gms.internal.ads;

import com.google.android.gms.location.GeofenceStatusCodes;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes.dex */
public class zzhx extends zzhj {
    public final int zzb;

    public zzhx(zzhm zzhmVar, int i, int i4) {
        super(zzb(2008, 1));
        this.zzb = 1;
    }

    public static zzhx zza(IOException iOException, zzhm zzhmVar, int i) {
        String message = iOException.getMessage();
        int i4 = iOException instanceof SocketTimeoutException ? 2002 : iOException instanceof InterruptedIOException ? GeofenceStatusCodes.GEOFENCE_INSUFFICIENT_LOCATION_PERMISSION : (message == null || !zzgrs.zza(message).matches("cleartext.*not permitted.*")) ? 2001 : 2007;
        return i4 == 2007 ? new zzhw(iOException, zzhmVar) : new zzhx(iOException, zzhmVar, i4, i);
    }

    private static int zzb(int i, int i4) {
        return i == 2000 ? i4 != 1 ? 2000 : 2001 : i;
    }

    public zzhx(IOException iOException, zzhm zzhmVar, int i, int i4) {
        super(iOException, zzb(i, i4));
        this.zzb = i4;
    }

    public zzhx(String str, zzhm zzhmVar, int i, int i4) {
        super(str, zzb(i, i4));
        this.zzb = i4;
    }

    public zzhx(String str, IOException iOException, zzhm zzhmVar, int i, int i4) {
        super(str, iOException, zzb(i, i4));
        this.zzb = i4;
    }
}
