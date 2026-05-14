package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
/* loaded from: classes.dex */
public abstract class zzfvv extends AsyncTask {
    private zzfvw zza;
    protected final zzfvn zzd;

    public zzfvv(zzfvn zzfvnVar) {
        this.zzd = zzfvnVar;
    }

    @Override // android.os.AsyncTask
    /* renamed from: zza */
    public void onPostExecute(String str) {
        zzfvw zzfvwVar = this.zza;
        if (zzfvwVar != null) {
            zzfvwVar.zzb(this);
        }
    }

    public final void zzb(zzfvw zzfvwVar) {
        this.zza = zzfvwVar;
    }
}
