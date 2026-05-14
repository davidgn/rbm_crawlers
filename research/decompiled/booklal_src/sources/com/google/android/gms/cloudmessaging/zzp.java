package com.google.android.gms.cloudmessaging;

import C.a;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzp<T> {
    final int zza;
    final TaskCompletionSource<T> zzb = new TaskCompletionSource<>();
    final int zzc;
    final Bundle zzd;

    public zzp(int i, int i4, Bundle bundle) {
        this.zza = i;
        this.zzc = i4;
        this.zzd = bundle;
    }

    public final String toString() {
        int i = this.zzc;
        int i4 = this.zza;
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i4);
        sb.append(" oneWay=");
        sb.append(zzb());
        sb.append("}");
        return sb.toString();
    }

    public abstract void zza(Bundle bundle);

    public abstract boolean zzb();

    public final void zzc(zzq zzqVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(zzqVar);
            Log.d("MessengerIpcClient", a.r(new StringBuilder(valueOf.length() + 14 + valueOf2.length()), "Failing ", valueOf, " with ", valueOf2));
        }
        this.zzb.setException(zzqVar);
    }

    public final void zzd(T t2) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(this);
            String valueOf2 = String.valueOf(t2);
            Log.d("MessengerIpcClient", a.r(new StringBuilder(valueOf.length() + 16 + valueOf2.length()), "Finishing ", valueOf, " with ", valueOf2));
        }
        this.zzb.setResult(t2);
    }
}
