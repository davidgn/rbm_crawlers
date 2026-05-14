package com.google.android.gms.internal.ads;

import java.io.Writer;
import java.util.Objects;
/* loaded from: classes.dex */
final class zziay extends Writer {
    private final Appendable zza;
    private final zziax zzb = new zziax(null);

    public zziay(Appendable appendable) {
        this.zza = appendable;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence) {
        this.zza.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
    }

    @Override // java.io.Writer
    public final void write(int i) {
        this.zza.append((char) i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        append(charSequence);
        return this;
    }

    @Override // java.io.Writer
    public final void write(String str, int i, int i4) {
        Objects.requireNonNull(str);
        this.zza.append(str, i, i4 + i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence, int i, int i4) {
        this.zza.append(charSequence, i, i4);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i4) {
        append(charSequence, i, i4);
        return this;
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i4) {
        zziax zziaxVar = this.zzb;
        zziaxVar.zza(cArr);
        this.zza.append(zziaxVar, i, i4 + i);
    }
}
