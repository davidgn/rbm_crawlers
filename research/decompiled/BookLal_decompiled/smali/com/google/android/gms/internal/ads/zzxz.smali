.class final Lcom/google/android/gms/internal/ads/zzxz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwr;
.implements Lcom/google/android/gms/internal/ads/zzafi;
.implements Lcom/google/android/gms/internal/ads/zzabg;
.implements Lcom/google/android/gms/internal/ads/zzabl;
.implements Lcom/google/android/gms/internal/ads/zzyj;


# static fields
.field private static final zzb:Ljava/util/Map;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzv;


# instance fields
.field private zzA:Z

.field private zzB:Lcom/google/android/gms/internal/ads/zzxy;

.field private zzC:Lcom/google/android/gms/internal/ads/zzagj;

.field private zzD:J

.field private zzE:Z

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:I

.field private zzK:Z

.field private zzL:J

.field private zzM:J

.field private zzN:Z

.field private zzO:I

.field private zzP:Z

.field private zzQ:Z

.field private final zzd:Landroid/net/Uri;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhi;

.field private final zzf:Lcom/google/android/gms/internal/ads/zztw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzxd;

.field private final zzh:Lcom/google/android/gms/internal/ads/zztr;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzxr;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzaaw;

.field private final zzk:J

.field private final zzl:J

.field private final zzm:Lcom/google/android/gms/internal/ads/zzabo;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzxm;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzdr;

.field private final zzp:Ljava/lang/Runnable;

.field private final zzq:Ljava/lang/Runnable;

.field private final zzr:Landroid/os/Handler;

.field private zzs:Lcom/google/android/gms/internal/ads/zzwq;

.field private zzt:Lcom/google/android/gms/internal/ads/zzain;

.field private zzu:[Lcom/google/android/gms/internal/ads/zzxp;

.field private zzv:[Lcom/google/android/gms/internal/ads/zzyk;

.field private zzw:[Lcom/google/android/gms/internal/ads/zzxx;

.field private zzx:Z

.field private zzy:Z

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxz;->zzb:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxz;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzxm;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzabf;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzxr;Lcom/google/android/gms/internal/ads/zzaaw;Ljava/lang/String;IZILcom/google/android/gms/internal/ads/zzv;JLcom/google/android/gms/internal/ads/zzabu;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzd:Landroid/net/Uri;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zze:Lcom/google/android/gms/internal/ads/zzhi;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzf:Lcom/google/android/gms/internal/ads/zztw;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzh:Lcom/google/android/gms/internal/ads/zztr;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzg:Lcom/google/android/gms/internal/ads/zzxd;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzi:Lcom/google/android/gms/internal/ads/zzxr;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzj:Lcom/google/android/gms/internal/ads/zzaaw;

    move v1, p11

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzk:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabo;

    const-string v2, "ProgressiveMediaPeriod"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzabo;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzn:Lcom/google/android/gms/internal/ads/zzxm;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzl:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdr;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdo;->zza:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Lcom/google/android/gms/internal/ads/zzdo;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzo:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzxv;-><init>(Lcom/google/android/gms/internal/ads/zzxz;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzp:Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzxs;-><init>(Lcom/google/android/gms/internal/ads/zzxz;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzq:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzr:Landroid/os/Handler;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzxx;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzw:[Lcom/google/android/gms/internal/ads/zzxx;

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzyk;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzxp;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzu:[Lcom/google/android/gms/internal/ads/zzxp;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzF:I

    return-void
.end method

.method public static synthetic zzJ()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzxz;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic zzK()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzxz;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method private final zzR(I)V
    .locals 14

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxy;->zzd:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxy;->zza:Lcom/google/android/gms/internal/ads/zzyw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzg:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzas;->zzf(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzL:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzwp;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzwp;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzxd;->zzh(Lcom/google/android/gms/internal/ads/zzwp;)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private final zzS(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzN:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzz:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxy;->zzb:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzq(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzN:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzH:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzL:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzO:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzg(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzs:Lcom/google/android/gms/internal/ads/zzwq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzym;->zzs(Lcom/google/android/gms/internal/ads/zzyn;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzH:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzxx;)Lcom/google/android/gms/internal/ads/zzags;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzw:[Lcom/google/android/gms/internal/ads/zzxx;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzxx;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzx:Z

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzxx;->zza:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x37

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Extractor added new track (id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafc;-><init>()V

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzj:Lcom/google/android/gms/internal/ads/zzaaw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzf:Lcom/google/android/gms/internal/ads/zztw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzh:Lcom/google/android/gms/internal/ads/zztr;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzyk;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzyk;-><init>(Lcom/google/android/gms/internal/ads/zzaaw;Lcom/google/android/gms/internal/ads/zztw;Lcom/google/android/gms/internal/ads/zztr;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxp;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzxp;-><init>(Lcom/google/android/gms/internal/ads/zzyk;)V

    invoke-virtual {v4, p0}, Lcom/google/android/gms/internal/ads/zzyk;->zzy(Lcom/google/android/gms/internal/ads/zzyj;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzw:[Lcom/google/android/gms/internal/ads/zzxx;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/ads/zzxx;

    aput-object p1, v2, v0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzw:[Lcom/google/android/gms/internal/ads/zzxx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzyk;

    aput-object v4, p1, v0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzu:[Lcom/google/android/gms/internal/ads/zzxp;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzxp;

    aput-object v1, p1, v0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzu:[Lcom/google/android/gms/internal/ads/zzxp;

    return-object v1
.end method

.method private final zzV()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzQ:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzx:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzyk;->zzn()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    if-eqz v5, :cond_b

    add-int/2addr v4, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzo:Lcom/google/android/gms/internal/ads/zzdr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdr;->zzb()Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v2, v2

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzbg;

    new-array v4, v2, [Z

    move v5, v0

    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v2, :cond_9

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzyk;->zzn()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzas;->zza(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v0

    :goto_2
    aput-boolean v11, v4, v5

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzz:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzz:Z

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzas;->zzc(Ljava/lang/String;)Z

    move-result v9

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzl:J

    cmp-long v11, v11, v6

    if-eqz v11, :cond_4

    if-ne v2, v1, :cond_4

    if-eqz v9, :cond_4

    move v9, v1

    goto :goto_3

    :cond_4
    move v9, v0

    :goto_3
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzA:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzt:Lcom/google/android/gms/internal/ads/zzain;

    if-eqz v9, :cond_8

    if-nez v10, :cond_5

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzw:[Lcom/google/android/gms/internal/ads/zzxx;

    aget-object v11, v11, v5

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzxx;->zzb:Z

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    if-nez v11, :cond_6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzap;

    new-array v12, v1, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v9, v12, v0

    invoke-direct {v11, v6, v7, v12}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    goto :goto_4

    :cond_6
    new-array v6, v1, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v9, v6, v0

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v11

    :goto_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    :cond_7
    if-eqz v10, :cond_8

    iget v6, v8, Lcom/google/android/gms/internal/ads/zzv;->zzh:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    iget v6, v8, Lcom/google/android/gms/internal/ads/zzv;->zzi:I

    if-ne v6, v7, :cond_8

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzain;->zza:I

    if-eq v6, v7, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzi(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    :cond_8
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzf:Lcom/google/android/gms/internal/ads/zztw;

    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/zztw;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzv;->zzb(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbg;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6}, [Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzbg;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzv;)V

    aput-object v7, v3, v5

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzv;->zzu:Z

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    add-int/2addr v5, v1

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyw;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzyw;-><init>([Lcom/google/android/gms/internal/ads/zzbg;)V

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzxy;-><init>(Lcom/google/android/gms/internal/ads/zzyw;[Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzA:Z

    if-eqz v0, :cond_a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzl:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzxn;-><init>(Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzagj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzi:Lcom/google/android/gms/internal/ads/zzxr;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzE:Z

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(JLcom/google/android/gms/internal/ads/zzagj;Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzs:Lcom/google/android/gms/internal/ads/zzwq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzwq;->zzp(Lcom/google/android/gms/internal/ads/zzwr;)V

    :cond_b
    :goto_5
    return-void
.end method

.method private final zzW()V
    .locals 10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzd:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zze:Lcom/google/android/gms/internal/ads/zzhi;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzxq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzn:Lcom/google/android/gms/internal/ads/zzxm;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzo:Lcom/google/android/gms/internal/ads/zzdr;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzxq;-><init>(Lcom/google/android/gms/internal/ads/zzxz;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzhi;Lcom/google/android/gms/internal/ads/zzxm;Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzdr;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzZ()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzagj;->zzc(J)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzagh;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzagk;->zzc:J

    invoke-virtual {v7, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzxq;->zzd(JJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzyk;->zzh(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzX()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzO:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzF:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabf;->zza(I)I

    move-result v1

    invoke-virtual {v0, v7, p0, v1}, Lcom/google/android/gms/internal/ads/zzabo;->zzd(Lcom/google/android/gms/internal/ads/zzabk;Lcom/google/android/gms/internal/ads/zzabg;I)J

    return-void
.end method

.method private final zzX()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzyk;->zzi()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zzY(Z)J
    .locals 5

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzxy;->zzc:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    :cond_0
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzyk;->zzo()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private final zzZ()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaa()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzabk;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzf()Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v2

    new-instance v15, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzh()Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzif;->zzg()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzif;->zzh()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzif;->zzf()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(JLcom/google/android/gms/internal/ads/zzhm;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzg()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzwp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    move-object v3, v13

    move-wide v13, v1

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/zzwp;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzxd;->zzf(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzyk;->zzg(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzs:Lcom/google/android/gms/internal/ads/zzwq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzym;->zzs(Lcom/google/android/gms/internal/ads/zzyn;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzabk;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzxq;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    if-eqz v2, :cond_1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzxz;->zzY(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzi:Lcom/google/android/gms/internal/ads/zzxr;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzE:Z

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(JLcom/google/android/gms/internal/ads/zzagj;Z)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzf()Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v2

    new-instance v14, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzh()Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzif;->zzg()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzif;->zzh()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzif;->zzf()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v2, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(JLcom/google/android/gms/internal/ads/zzhm;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxq;->zzg()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwp;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzwp;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzxd;->zze(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;)V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzs:Lcom/google/android/gms/internal/ads/zzwq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzym;->zzs(Lcom/google/android/gms/internal/ads/zzyn;)V

    return-void
.end method

.method public final bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzabk;JJI)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzf()Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v3

    if-nez v1, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzh()Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object v7

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzhm;->zza:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v4, v3

    move-wide/from16 v10, p2

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(JLcom/google/android/gms/internal/ads/zzhm;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    move-result-wide v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzh()Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object v19

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzg()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzh()Ljava/util/Map;

    move-result-object v21

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzf()J

    move-result-wide v26

    move-object/from16 v16, v4

    move-wide/from16 v22, p2

    move-wide/from16 v24, p4

    invoke-direct/range {v16 .. v27}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(JLcom/google/android/gms/internal/ads/zzhm;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v3, v4

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzg()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwp;

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzwp;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    invoke-virtual {v4, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzxd;->zzd(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;I)V

    return-void
.end method

.method public final synthetic zzD()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzV()V

    return-void
.end method

.method public final synthetic zzE()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzQ:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzs:Lcom/google/android/gms/internal/ads/zzwq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzym;->zzs(Lcom/google/android/gms/internal/ads/zzyn;)V

    :cond_0
    return-void
.end method

.method public final synthetic zzF(Lcom/google/android/gms/internal/ads/zzagj;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzt:Lcom/google/android/gms/internal/ads/zzain;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzagi;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzK:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzE:Z

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    :goto_1
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzF:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzi:Lcom/google/android/gms/internal/ads/zzxr;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzxr;->zzb(JLcom/google/android/gms/internal/ads/zzagj;Z)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzV()V

    return-void
.end method

.method public final synthetic zzG()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzK:Z

    return-void
.end method

.method public final synthetic zzH()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzxu;-><init>(Lcom/google/android/gms/internal/ads/zzxz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzr:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic zzI(Z)J
    .locals 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzY(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic zzL()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzk:J

    return-wide v0
.end method

.method public final synthetic zzM()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzq:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final synthetic zzN()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzr:Landroid/os/Handler;

    return-object v0
.end method

.method public final synthetic zzO()Lcom/google/android/gms/internal/ads/zzain;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzt:Lcom/google/android/gms/internal/ads/zzain;

    return-object v0
.end method

.method public final synthetic zzP(Lcom/google/android/gms/internal/ads/zzain;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzt:Lcom/google/android/gms/internal/ads/zzain;

    return-void
.end method

.method public final synthetic zzQ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    return-wide v0
.end method

.method public final zza()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzyk;->zzj()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzabo;->zzg(Lcom/google/android/gms/internal/ads/zzabl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzr:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzs:Lcom/google/android/gms/internal/ads/zzwq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzQ:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzwq;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzs:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzo:Lcom/google/android/gms/internal/ads/zzdr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdr;->zza()Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzW()V

    return-void
.end method

.method public final zzc()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzr()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzyw;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxy;->zza:Lcom/google/android/gms/internal/ads/zzyw;

    return-object v0
.end method

.method public final zze([Lcom/google/android/gms/internal/ads/zzaal;[Z[Lcom/google/android/gms/internal/ads/zzyl;[ZJ)J
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxy;->zza:Lcom/google/android/gms/internal/ads/zzyw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxy;->zzc:[Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/zzxw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzxw;->zza()I

    move-result v5

    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzG:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_3
    move p2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzA:Z

    if-nez p2, :cond_3

    goto :goto_1

    :goto_2
    move v2, v3

    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaaq;->zze()I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v3

    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzaaq;->zzf(I)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    goto :goto_5

    :cond_6
    move v6, v3

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaaq;->zza()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzyw;->zzb(Lcom/google/android/gms/internal/ads/zzbg;)I

    move-result v6

    aget-boolean v7, v0, v6

    xor-int/2addr v7, v4

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    aput-boolean v4, v0, v6

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzaal;->zzc()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzu:Z

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    new-instance v5, Lcom/google/android/gms/internal/ads/zzxw;

    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/internal/ads/zzxw;-><init>(Lcom/google/android/gms/internal/ads/zzxz;I)V

    aput-object v5, p3, v2

    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object p2, p2, v6

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzm()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/zzyk;->zzt(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v4

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzN:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzH:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabo;->zze()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzyk;->zzx()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabo;->zzf()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzyk;->zzg(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzxz;->zzj(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzG:Z

    return-wide p5
.end method

.method public final zzf(JZ)V
    .locals 5

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzA:Z

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzZ()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzxy;->zzc:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzyk;->zzw(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final zzg(J)V
    .locals 0

    return-void
.end method

.method public final zzh()J
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzL:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzH:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzX()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzO:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzH:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zzi()J
    .locals 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzz:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzxy;->zzb:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzxy;->zzc:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzyk;->zzp()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzyk;->zzo()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzxz;->zzY(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzL:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzj(J)J
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzB:Lcom/google/android/gms/internal/ads/zzxy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxy;->zzb:[Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzagj;->zzb()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzH:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzL:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzL:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzZ()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    return-wide p1

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzF:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzabo;->zze()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v4, v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_a

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzu:[Lcom/google/android/gms/internal/ads/zzxp;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzxp;->zzf()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzyk;->zzm()I

    move-result v7

    if-nez v7, :cond_4

    cmp-long v7, v2, p1

    if-eqz v7, :cond_6

    :cond_4
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzA:Z

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzyk;->zzl()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzyk;->zzs(I)Z

    move-result v6

    goto :goto_1

    :cond_5
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    invoke-virtual {v6, p1, p2, v7}, Lcom/google/android/gms/internal/ads/zzyk;->zzt(JZ)Z

    move-result v6

    :goto_1
    if-nez v6, :cond_6

    aget-boolean v6, v0, v5

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzz:Z

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzN:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzM:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzI:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabo;->zze()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzyk;->zzx()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabo;->zzf()V

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabo;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_a

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzyk;->zzg(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    return-wide p1
.end method

.method public final zzk(JLcom/google/android/gms/internal/ads/zznb;)J
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzaa()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzagj;->zzb()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzagj;->zzc(J)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzagh;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzagh;->zzb:Lcom/google/android/gms/internal/ads/zzagk;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zznb;->zzd:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_2

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zznb;->zze:J

    cmp-long v8, v8, v5

    if-nez v8, :cond_1

    goto/16 :goto_e

    :cond_1
    move-wide v8, v5

    :cond_2
    sget-object v10, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sub-long v10, v1, v8

    xor-long/2addr v8, v1

    xor-long v12, v1, v10

    cmp-long v12, v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ltz v12, :cond_3

    move v12, v13

    goto :goto_0

    :cond_3
    move v12, v14

    :goto_0
    cmp-long v8, v8, v5

    if-ltz v8, :cond_4

    move v8, v13

    goto :goto_1

    :cond_4
    move v8, v14

    :goto_1
    or-int/2addr v8, v12

    const-wide/16 v15, 0x1

    const/16 v9, 0x3f

    const-wide v17, 0x7fffffffffffffffL

    if-eqz v8, :cond_5

    move-wide/from16 v19, v10

    goto :goto_2

    :cond_5
    ushr-long v19, v10, v9

    xor-long v19, v19, v15

    add-long v19, v19, v17

    :goto_2
    const-wide/high16 v21, -0x8000000000000000L

    cmp-long v8, v19, v21

    if-nez v8, :cond_7

    cmp-long v8, v10, v21

    if-nez v8, :cond_6

    move-wide/from16 v10, v21

    goto :goto_4

    :cond_6
    :goto_3
    move-wide/from16 v19, v21

    goto :goto_5

    :cond_7
    :goto_4
    cmp-long v8, v19, v17

    if-nez v8, :cond_9

    cmp-long v8, v10, v17

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    move-wide/from16 v19, v17

    :cond_9
    :goto_5
    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/zznb;->zze:J

    add-long v23, v1, v10

    xor-long/2addr v10, v1

    xor-long v25, v1, v23

    cmp-long v3, v25, v5

    if-ltz v3, :cond_a

    move v3, v13

    goto :goto_6

    :cond_a
    move v3, v14

    :goto_6
    cmp-long v5, v10, v5

    if-gez v5, :cond_b

    move v5, v13

    goto :goto_7

    :cond_b
    move v5, v14

    :goto_7
    or-int/2addr v3, v5

    if-eqz v3, :cond_c

    move-wide/from16 v5, v23

    goto :goto_8

    :cond_c
    ushr-long v5, v23, v9

    xor-long/2addr v5, v15

    add-long v5, v5, v17

    :goto_8
    cmp-long v3, v5, v21

    if-nez v3, :cond_d

    cmp-long v3, v23, v21

    if-nez v3, :cond_f

    goto :goto_9

    :cond_d
    move-wide/from16 v21, v23

    :goto_9
    cmp-long v3, v5, v17

    if-nez v3, :cond_e

    cmp-long v3, v21, v17

    goto :goto_a

    :cond_e
    move-wide/from16 v17, v5

    :cond_f
    :goto_a
    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzagk;->zzb:J

    cmp-long v3, v19, v5

    if-gtz v3, :cond_10

    cmp-long v3, v5, v17

    if-gtz v3, :cond_10

    move v3, v13

    goto :goto_b

    :cond_10
    move v3, v14

    :goto_b
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzagk;->zzb:J

    cmp-long v4, v19, v7

    if-gtz v4, :cond_11

    cmp-long v4, v7, v17

    if-gtz v4, :cond_11

    goto :goto_c

    :cond_11
    move v13, v14

    :goto_c
    if-eqz v3, :cond_13

    if-eqz v13, :cond_13

    sub-long v3, v5, v1

    sub-long v1, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_12

    goto :goto_d

    :cond_12
    return-wide v7

    :cond_13
    if-eqz v3, :cond_14

    :goto_d
    move-wide v1, v5

    goto :goto_e

    :cond_14
    if-eqz v13, :cond_15

    move-wide v1, v7

    :goto_e
    return-wide v1

    :cond_15
    return-wide v19
.end method

.method public final zzl()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzlt;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabo;->zzb()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzN:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzJ:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzo:Lcom/google/android/gms/internal/ads/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zza()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabo;->zze()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzW()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabo;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzo:Lcom/google/android/gms/internal/ads/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzyk;->zzf()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzn:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxm;->zzb()V

    return-void
.end method

.method public final zzp(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyk;->zzq(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzq(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyk;->zzk()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzr()V

    return-void
.end method

.method public final zzr()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzF:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabf;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzm:Lcom/google/android/gms/internal/ads/zzabo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabo;->zzh(I)V

    return-void
.end method

.method public final zzs(ILcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzT()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzR(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzyk;->zzr(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzS(I)V

    :cond_1
    return p2
.end method

.method public final zzt(IJ)I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzR(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzP:Z

    invoke-virtual {v0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzyk;->zzu(JZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzyk;->zzv(I)V

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxz;->zzS(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final zzu(II)Lcom/google/android/gms/internal/ads/zzags;
    .locals 1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzxx;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzxx;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzxz;->zzU(Lcom/google/android/gms/internal/ads/zzxx;)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object p1

    return-object p1
.end method

.method public final zzv()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzr:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzp:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzagj;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzxt;-><init>(Lcom/google/android/gms/internal/ads/zzxz;Lcom/google/android/gms/internal/ads/zzagj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzr:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzx()Lcom/google/android/gms/internal/ads/zzags;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxx;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxx;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzxz;->zzU(Lcom/google/android/gms/internal/ads/zzxx;)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v0

    return-object v0
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzr:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxz;->zzp:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic zzz(Lcom/google/android/gms/internal/ads/zzabk;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzabi;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzxq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzf()Lcom/google/android/gms/internal/ads/zzif;

    move-result-object v3

    new-instance v14, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzh()Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzg()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzh()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzif;->zzf()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v3, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(JLcom/google/android/gms/internal/ads/zzhm;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzg()J

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    move-object/from16 v4, p6

    :goto_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_2

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzat;

    if-nez v7, :cond_0

    instance-of v7, v4, Ljava/io/FileNotFoundException;

    if-nez v7, :cond_0

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzhw;

    if-nez v7, :cond_0

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzabn;

    if-nez v7, :cond_0

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzhj;

    if-eqz v7, :cond_1

    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/internal/ads/zzhj;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhj;->zza:I

    const/16 v8, 0x7d8

    if-ne v7, v8, :cond_1

    :cond_0
    move-wide v7, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_2
    add-int/lit8 v4, p7, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v7, 0x1388

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v7, v4

    :goto_1
    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabo;->zzb:Lcom/google/android/gms/internal/ads/zzabi;

    goto :goto_6

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzX()I

    move-result v4

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzO:I

    const/4 v10, 0x0

    if-le v4, v9, :cond_4

    move v9, v1

    goto :goto_2

    :cond_4
    move v9, v10

    :goto_2
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzK:Z

    if-nez v11, :cond_8

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzC:Lcom/google/android/gms/internal/ads/zzagj;

    if-eqz v11, :cond_5

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    move-result-wide v11

    cmp-long v5, v11, v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzy:Z

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzxz;->zzT()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzN:Z

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabo;->zza:Lcom/google/android/gms/internal/ads/zzabi;

    goto :goto_6

    :cond_6
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzH:Z

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzL:J

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzO:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzv:[Lcom/google/android/gms/internal/ads/zzyk;

    array-length v11, v6

    move v12, v10

    :goto_3
    if-ge v12, v11, :cond_7

    aget-object v13, v6, v12

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzyk;->zzg(Z)V

    add-int/2addr v12, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzxq;->zzd(JJ)V

    goto :goto_5

    :cond_8
    :goto_4
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzO:I

    :goto_5
    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzabo;->zza(ZJ)Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v4

    :goto_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzabi;->zza()Z

    move-result v5

    xor-int/2addr v1, v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzg:Lcom/google/android/gms/internal/ads/zzxd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zzg()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzxz;->zzD:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v17

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v19

    new-instance v7, Lcom/google/android/gms/internal/ads/zzwp;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/internal/ads/zzwp;-><init>(IILcom/google/android/gms/internal/ads/zzv;ILjava/lang/Object;JJ)V

    move-object/from16 v8, p6

    invoke-virtual {v6, v3, v7, v8, v1}, Lcom/google/android/gms/internal/ads/zzxd;->zzg(Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V

    if-nez v5, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxq;->zze()J

    :cond_9
    return-object v4
.end method
