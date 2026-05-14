package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
public final class zziav extends AbstractMap implements Serializable {
    private static final Comparator zze = new zziao();
    zziau zza;
    int zzb;
    int zzc;
    final zziau zzd;
    private final Comparator zzf;
    private final boolean zzg;
    private zziaq zzh;
    private zzias zzi;

    public zziav() {
        this(zze, true);
    }

    private final void zzf(zziau zziauVar, zziau zziauVar2) {
        zziau zziauVar3 = zziauVar.zza;
        zziauVar.zza = null;
        if (zziauVar2 != null) {
            zziauVar2.zza = zziauVar3;
        }
        if (zziauVar3 == null) {
            this.zza = zziauVar2;
        } else if (zziauVar3.zzb == zziauVar) {
            zziauVar3.zzb = zziauVar2;
        } else {
            zziauVar3.zzc = zziauVar2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x002f, code lost:
        if (r10 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x005a, code lost:
        if (r10 == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0080 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzg(com.google.android.gms.internal.ads.zziau r9, boolean r10) {
        /*
            r8 = this;
        L0:
            if (r9 == 0) goto L84
            com.google.android.gms.internal.ads.zziau r0 = r9.zzb
            com.google.android.gms.internal.ads.zziau r1 = r9.zzc
            r2 = 0
            if (r0 == 0) goto Lc
            int r3 = r0.zzi
            goto Ld
        Lc:
            r3 = r2
        Ld:
            if (r1 == 0) goto L12
            int r4 = r1.zzi
            goto L13
        L12:
            r4 = r2
        L13:
            int r5 = r3 - r4
            r6 = -2
            r7 = 1
            if (r5 != r6) goto L42
            com.google.android.gms.internal.ads.zziau r0 = r1.zzb
            com.google.android.gms.internal.ads.zziau r3 = r1.zzc
            if (r3 == 0) goto L22
            int r3 = r3.zzi
            goto L23
        L22:
            r3 = r2
        L23:
            if (r0 == 0) goto L28
            int r0 = r0.zzi
            goto L29
        L28:
            r0 = r2
        L29:
            int r0 = r0 - r3
            r3 = -1
            if (r0 == r3) goto L3a
            if (r0 != 0) goto L32
            if (r10 != 0) goto L33
            goto L3b
        L32:
            r7 = r10
        L33:
            r8.zzi(r1)
            r8.zzh(r9)
            goto L3f
        L3a:
            r2 = r10
        L3b:
            r8.zzh(r9)
            r7 = r2
        L3f:
            if (r7 != 0) goto L84
            goto L80
        L42:
            r1 = 2
            if (r5 != r1) goto L6d
            com.google.android.gms.internal.ads.zziau r1 = r0.zzb
            com.google.android.gms.internal.ads.zziau r3 = r0.zzc
            if (r3 == 0) goto L4e
            int r3 = r3.zzi
            goto L4f
        L4e:
            r3 = r2
        L4f:
            if (r1 == 0) goto L54
            int r1 = r1.zzi
            goto L55
        L54:
            r1 = r2
        L55:
            int r1 = r1 - r3
            if (r1 == r7) goto L65
            if (r1 != 0) goto L5d
            if (r10 != 0) goto L5e
            goto L66
        L5d:
            r7 = r10
        L5e:
            r8.zzh(r0)
            r8.zzi(r9)
            goto L6a
        L65:
            r2 = r10
        L66:
            r8.zzi(r9)
            r7 = r2
        L6a:
            if (r7 == 0) goto L80
            goto L84
        L6d:
            if (r5 != 0) goto L76
            int r3 = r3 + 1
            r9.zzi = r3
            if (r10 == 0) goto L80
            goto L84
        L76:
            int r0 = java.lang.Math.max(r3, r4)
            int r0 = r0 + r7
            r9.zzi = r0
            if (r10 != 0) goto L80
            goto L84
        L80:
            com.google.android.gms.internal.ads.zziau r9 = r9.zza
            goto L0
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zziav.zzg(com.google.android.gms.internal.ads.zziau, boolean):void");
    }

    private final void zzh(zziau zziauVar) {
        zziau zziauVar2 = zziauVar.zzb;
        zziau zziauVar3 = zziauVar.zzc;
        zziau zziauVar4 = zziauVar3.zzb;
        zziau zziauVar5 = zziauVar3.zzc;
        zziauVar.zzc = zziauVar4;
        if (zziauVar4 != null) {
            zziauVar4.zza = zziauVar;
        }
        zzf(zziauVar, zziauVar3);
        zziauVar3.zzb = zziauVar;
        zziauVar.zza = zziauVar3;
        int max = Math.max(zziauVar2 != null ? zziauVar2.zzi : 0, zziauVar4 != null ? zziauVar4.zzi : 0) + 1;
        zziauVar.zzi = max;
        zziauVar3.zzi = Math.max(max, zziauVar5 != null ? zziauVar5.zzi : 0) + 1;
    }

    private final void zzi(zziau zziauVar) {
        zziau zziauVar2 = zziauVar.zzb;
        zziau zziauVar3 = zziauVar.zzc;
        zziau zziauVar4 = zziauVar2.zzb;
        zziau zziauVar5 = zziauVar2.zzc;
        zziauVar.zzb = zziauVar5;
        if (zziauVar5 != null) {
            zziauVar5.zza = zziauVar;
        }
        zzf(zziauVar, zziauVar2);
        zziauVar2.zzc = zziauVar;
        zziauVar.zza = zziauVar2;
        int max = Math.max(zziauVar3 != null ? zziauVar3.zzi : 0, zziauVar5 != null ? zziauVar5.zzi : 0) + 1;
        zziauVar.zzi = max;
        zziauVar2.zzi = Math.max(max, zziauVar4 != null ? zziauVar4.zzi : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.zza = null;
        this.zzb = 0;
        this.zzc++;
        zziau zziauVar = this.zzd;
        zziauVar.zze = zziauVar;
        zziauVar.zzd = zziauVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return zzb(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        zziaq zziaqVar = this.zzh;
        if (zziaqVar == null) {
            zziaq zziaqVar2 = new zziaq(this);
            this.zzh = zziaqVar2;
            return zziaqVar2;
        }
        return zziaqVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        zziau zzb = zzb(obj);
        if (zzb != null) {
            return zzb.zzh;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        zzias zziasVar = this.zzi;
        if (zziasVar == null) {
            zzias zziasVar2 = new zzias(this);
            this.zzi = zziasVar2;
            return zziasVar2;
        }
        return zziasVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null || this.zzg) {
                zziau zza = zza(obj, true);
                Object obj3 = zza.zzh;
                zza.zzh = obj2;
                return obj3;
            }
            throw new NullPointerException("value == null");
        }
        throw new NullPointerException("key == null");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        zziau zze2 = zze(obj);
        if (zze2 != null) {
            return zze2.zzh;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zzb;
    }

    public final zziau zza(Object obj, boolean z4) {
        int i;
        zziau zziauVar;
        Comparator comparator = this.zzf;
        zziau zziauVar2 = this.zza;
        if (zziauVar2 != null) {
            Comparable comparable = comparator == zze ? (Comparable) obj : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(zziauVar2.zzf) : comparator.compare(obj, zziauVar2.zzf);
                if (i == 0) {
                    return zziauVar2;
                }
                zziau zziauVar3 = i < 0 ? zziauVar2.zzb : zziauVar2.zzc;
                if (zziauVar3 == null) {
                    break;
                }
                zziauVar2 = zziauVar3;
            }
        } else {
            i = 0;
        }
        if (z4) {
            zziau zziauVar4 = this.zzd;
            if (zziauVar2 != null) {
                zziauVar = new zziau(this.zzg, zziauVar2, obj, zziauVar4, zziauVar4.zze);
                if (i < 0) {
                    zziauVar2.zzb = zziauVar;
                } else {
                    zziauVar2.zzc = zziauVar;
                }
                zzg(zziauVar2, true);
            } else if (comparator == zze && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            } else {
                zziauVar = new zziau(this.zzg, null, obj, zziauVar4, zziauVar4.zze);
                this.zza = zziauVar;
            }
            this.zzb++;
            this.zzc++;
            return zziauVar;
        }
        return null;
    }

    public final zziau zzb(Object obj) {
        if (obj != null) {
            try {
                return zza(obj, false);
            } catch (ClassCastException unused) {
                return null;
            }
        }
        return null;
    }

    public final zziau zzc(Map.Entry entry) {
        zziau zzb = zzb(entry.getKey());
        if (zzb == null || !Objects.equals(zzb.zzh, entry.getValue())) {
            return null;
        }
        return zzb;
    }

    public final void zzd(zziau zziauVar, boolean z4) {
        zziau zziauVar2;
        zziau zziauVar3;
        int i;
        if (z4) {
            zziau zziauVar4 = zziauVar.zze;
            zziauVar4.zzd = zziauVar.zzd;
            zziauVar.zzd.zze = zziauVar4;
        }
        zziau zziauVar5 = zziauVar.zzb;
        zziau zziauVar6 = zziauVar.zzc;
        zziau zziauVar7 = zziauVar.zza;
        int i4 = 0;
        if (zziauVar5 == null || zziauVar6 == null) {
            if (zziauVar5 != null) {
                zzf(zziauVar, zziauVar5);
                zziauVar.zzb = null;
            } else if (zziauVar6 != null) {
                zzf(zziauVar, zziauVar6);
                zziauVar.zzc = null;
            } else {
                zzf(zziauVar, null);
            }
            zzg(zziauVar7, false);
            this.zzb--;
            this.zzc++;
            return;
        }
        if (zziauVar5.zzi > zziauVar6.zzi) {
            do {
                zziauVar3 = zziauVar5;
                zziauVar5 = zziauVar5.zzc;
            } while (zziauVar5 != null);
        } else {
            do {
                zziauVar2 = zziauVar6;
                zziauVar6 = zziauVar6.zzb;
            } while (zziauVar6 != null);
            zziauVar3 = zziauVar2;
        }
        zzd(zziauVar3, false);
        zziau zziauVar8 = zziauVar.zzb;
        if (zziauVar8 != null) {
            i = zziauVar8.zzi;
            zziauVar3.zzb = zziauVar8;
            zziauVar8.zza = zziauVar3;
            zziauVar.zzb = null;
        } else {
            i = 0;
        }
        zziau zziauVar9 = zziauVar.zzc;
        if (zziauVar9 != null) {
            i4 = zziauVar9.zzi;
            zziauVar3.zzc = zziauVar9;
            zziauVar9.zza = zziauVar3;
            zziauVar.zzc = null;
        }
        zziauVar3.zzi = Math.max(i, i4) + 1;
        zzf(zziauVar, zziauVar3);
    }

    public final zziau zze(Object obj) {
        zziau zzb = zzb(obj);
        if (zzb != null) {
            zzd(zzb, true);
        }
        return zzb;
    }

    public zziav(Comparator comparator, boolean z4) {
        this.zzb = 0;
        this.zzc = 0;
        this.zzf = comparator;
        this.zzg = z4;
        this.zzd = new zziau(z4);
    }

    public zziav(boolean z4) {
        this(zze, false);
    }
}
