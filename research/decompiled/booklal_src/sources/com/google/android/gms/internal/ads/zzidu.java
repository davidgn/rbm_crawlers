package com.google.android.gms.internal.ads;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzb uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class zzidu {
    public static final zzidu zza;
    public static final zzidu zzb;
    public static final zzidu zzc;
    public static final zzidu zzd;
    public static final zzidu zze;
    public static final zzidu zzf;
    public static final zzidu zzg;
    public static final zzidu zzh;
    public static final zzidu zzi;
    public static final zzidu zzj;
    private static final /* synthetic */ zzidu[] zzl;
    private final Class zzk;

    static {
        zzidu zziduVar = new zzidu("VOID", 0, Void.class, Void.class, null);
        zza = zziduVar;
        Class cls = Integer.TYPE;
        zzidu zziduVar2 = new zzidu("INT", 1, cls, Integer.class, 0);
        zzb = zziduVar2;
        zzidu zziduVar3 = new zzidu("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zziduVar3;
        zzidu zziduVar4 = new zzidu("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zziduVar4;
        zzidu zziduVar5 = new zzidu("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zziduVar5;
        zzidu zziduVar6 = new zzidu("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zziduVar6;
        zzidu zziduVar7 = new zzidu("STRING", 6, String.class, String.class, "");
        zzg = zziduVar7;
        zzidu zziduVar8 = new zzidu("BYTE_STRING", 7, zzibz.class, zzibz.class, zzibz.zza);
        zzh = zziduVar8;
        zzidu zziduVar9 = new zzidu("ENUM", 8, cls, Integer.class, null);
        zzi = zziduVar9;
        zzidu zziduVar10 = new zzidu("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zziduVar10;
        zzl = new zzidu[]{zziduVar, zziduVar2, zziduVar3, zziduVar4, zziduVar5, zziduVar6, zziduVar7, zziduVar8, zziduVar9, zziduVar10};
    }

    private zzidu(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzk = cls2;
    }

    public static zzidu[] values() {
        return (zzidu[]) zzl.clone();
    }

    public final Class zza() {
        return this.zzk;
    }
}
