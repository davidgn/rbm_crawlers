package com.google.android.gms.internal.ads;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzc uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class zzigg {
    public static final zzigg zza;
    public static final zzigg zzb;
    public static final zzigg zzc;
    public static final zzigg zzd;
    public static final zzigg zze;
    public static final zzigg zzf;
    public static final zzigg zzg;
    public static final zzigg zzh;
    public static final zzigg zzi;
    public static final zzigg zzj;
    public static final zzigg zzk;
    public static final zzigg zzl;
    public static final zzigg zzm;
    public static final zzigg zzn;
    public static final zzigg zzo;
    public static final zzigg zzp;
    public static final zzigg zzq;
    public static final zzigg zzr;
    private static final /* synthetic */ zzigg[] zzu;
    private final zzigh zzs;
    private final int zzt;

    static {
        zzigg zziggVar = new zzigg("DOUBLE", 0, zzigh.DOUBLE, 1);
        zza = zziggVar;
        zzigg zziggVar2 = new zzigg("FLOAT", 1, zzigh.FLOAT, 5);
        zzb = zziggVar2;
        zzigh zzighVar = zzigh.LONG;
        zzigg zziggVar3 = new zzigg("INT64", 2, zzighVar, 0);
        zzc = zziggVar3;
        zzigg zziggVar4 = new zzigg("UINT64", 3, zzighVar, 0);
        zzd = zziggVar4;
        zzigh zzighVar2 = zzigh.INT;
        zzigg zziggVar5 = new zzigg("INT32", 4, zzighVar2, 0);
        zze = zziggVar5;
        zzigg zziggVar6 = new zzigg("FIXED64", 5, zzighVar, 1);
        zzf = zziggVar6;
        zzigg zziggVar7 = new zzigg("FIXED32", 6, zzighVar2, 5);
        zzg = zziggVar7;
        zzigg zziggVar8 = new zzigg("BOOL", 7, zzigh.BOOLEAN, 0);
        zzh = zziggVar8;
        zzigg zziggVar9 = new zzigg("STRING", 8, zzigh.STRING, 2);
        zzi = zziggVar9;
        zzigh zzighVar3 = zzigh.MESSAGE;
        zzigg zziggVar10 = new zzigg("GROUP", 9, zzighVar3, 3);
        zzj = zziggVar10;
        zzigg zziggVar11 = new zzigg("MESSAGE", 10, zzighVar3, 2);
        zzk = zziggVar11;
        zzigg zziggVar12 = new zzigg("BYTES", 11, zzigh.BYTE_STRING, 2);
        zzl = zziggVar12;
        zzigg zziggVar13 = new zzigg("UINT32", 12, zzighVar2, 0);
        zzm = zziggVar13;
        zzigg zziggVar14 = new zzigg("ENUM", 13, zzigh.ENUM, 0);
        zzn = zziggVar14;
        zzigg zziggVar15 = new zzigg("SFIXED32", 14, zzighVar2, 5);
        zzo = zziggVar15;
        zzigg zziggVar16 = new zzigg("SFIXED64", 15, zzighVar, 1);
        zzp = zziggVar16;
        zzigg zziggVar17 = new zzigg("SINT32", 16, zzighVar2, 0);
        zzq = zziggVar17;
        zzigg zziggVar18 = new zzigg("SINT64", 17, zzighVar, 0);
        zzr = zziggVar18;
        zzu = new zzigg[]{zziggVar, zziggVar2, zziggVar3, zziggVar4, zziggVar5, zziggVar6, zziggVar7, zziggVar8, zziggVar9, zziggVar10, zziggVar11, zziggVar12, zziggVar13, zziggVar14, zziggVar15, zziggVar16, zziggVar17, zziggVar18};
    }

    private zzigg(String str, int i, zzigh zzighVar, int i4) {
        this.zzs = zzighVar;
        this.zzt = i4;
    }

    public static zzigg[] values() {
        return (zzigg[]) zzu.clone();
    }

    public final zzigh zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }
}
