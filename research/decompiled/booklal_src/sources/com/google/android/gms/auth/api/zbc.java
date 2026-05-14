package com.google.android.gms.auth.api;
@Deprecated
/* loaded from: classes.dex */
public final class zbc {
    protected Boolean zba;
    protected String zbb;

    public zbc() {
        this.zba = Boolean.FALSE;
    }

    public final zbc zba(String str) {
        this.zbb = str;
        return this;
    }

    public zbc(zbd zbdVar) {
        boolean z4;
        String str;
        this.zba = Boolean.FALSE;
        zbd.zbb(zbdVar);
        z4 = zbdVar.zbc;
        this.zba = Boolean.valueOf(z4);
        str = zbdVar.zbd;
        this.zbb = str;
    }
}
