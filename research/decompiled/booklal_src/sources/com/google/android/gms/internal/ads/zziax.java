package com.google.android.gms.internal.ads;
/* loaded from: classes.dex */
final class zziax implements CharSequence {
    private char[] zza;
    private String zzb;

    private zziax() {
        throw null;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.zza[i];
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.zza.length;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i4) {
        return new String(this.zza, i, i4 - i);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        if (this.zzb == null) {
            this.zzb = new String(this.zza);
        }
        return this.zzb;
    }

    public final void zza(char[] cArr) {
        this.zza = cArr;
        this.zzb = null;
    }

    public /* synthetic */ zziax(byte[] bArr) {
    }
}
