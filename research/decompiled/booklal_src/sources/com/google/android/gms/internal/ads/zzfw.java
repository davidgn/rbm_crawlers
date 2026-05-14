package com.google.android.gms.internal.ads;

import e1.i;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public final class zzfw extends zzfy {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzfw(int i, long j5) {
        super(i, null);
        this.zza = j5;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzfy
    public final String toString() {
        List list = this.zzb;
        String zze = zzfy.zze(this.zzd);
        String arrays = Arrays.toString(list.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        int length = zze.length();
        StringBuilder sb = new StringBuilder(length + 9 + String.valueOf(arrays).length() + 13 + String.valueOf(arrays2).length());
        i.j(sb, zze, " leaves: ", arrays, " containers: ");
        sb.append(arrays2);
        return sb.toString();
    }

    public final void zza(zzfx zzfxVar) {
        this.zzb.add(zzfxVar);
    }

    public final void zzb(zzfw zzfwVar) {
        this.zzc.add(zzfwVar);
    }

    public final zzfx zzc(int i) {
        List list = this.zzb;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            zzfx zzfxVar = (zzfx) list.get(i4);
            if (zzfxVar.zzd == i) {
                return zzfxVar;
            }
        }
        return null;
    }

    public final zzfw zzd(int i) {
        List list = this.zzc;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            zzfw zzfwVar = (zzfw) list.get(i4);
            if (zzfwVar.zzd == i) {
                return zzfwVar;
            }
        }
        return null;
    }
}
