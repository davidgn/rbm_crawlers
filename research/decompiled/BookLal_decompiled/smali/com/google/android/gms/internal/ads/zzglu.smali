.class public final Lcom/google/android/gms/internal/ads/zzglu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgli;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/ExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgde;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgph;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzglw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgcf;Lcom/google/android/gms/internal/ads/zzgde;Lcom/google/android/gms/internal/ads/zzgph;Lcom/google/android/gms/internal/ads/zzglw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzb:Ljava/util/concurrent/ExecutorService;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzc:Lcom/google/android/gms/internal/ads/zzgde;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzg:Lcom/google/android/gms/internal/ads/zzglw;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgcf;->zzd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzd:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzgcf;->zzk()Lcom/google/android/gms/internal/ads/zzgcz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgcz;->zzc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zze:Ljava/lang/String;

    return-void
.end method

.method private static zze(I)Lcom/google/android/gms/internal/ads/zzges;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzges;->zzd()Lcom/google/android/gms/internal/ads/zzger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzger;->zze(I)Lcom/google/android/gms/internal/ads/zzger;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzges;

    return-object p0
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcu;->zza()Lcom/google/android/gms/internal/ads/zzbct;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauk;->zza()[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzibz;->zzs([BII)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zza(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzbct;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(J)Lcom/google/android/gms/internal/ads/zzbct;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zza:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbct;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzc:Lcom/google/android/gms/internal/ads/zzgde;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbct;->zze(J)Lcom/google/android/gms/internal/ads/zzbct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbct;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgda;->zza([BZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zze:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "aspq"

    invoke-virtual {v1, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgde;->zza(Ljava/lang/String;)LN2/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzglt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzglt;-><init>(Lcom/google/android/gms/internal/ads/zzglu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzglr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzglr;-><init>(Lcom/google/android/gms/internal/ads/zzglu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v4, Ljava/net/UnknownHostException;

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgls;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgls;-><init>(Lcom/google/android/gms/internal/ads/zzglu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v4, Ljava/net/SocketException;

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    const/16 v1, 0x4e22

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzgdd;)Lcom/google/android/gms/internal/ads/zzges;
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgdd;->zza()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzauk;->zza()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v1, 0x4e23

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzc(ILjava/lang/String;)V

    const/4 p1, 0x7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(I)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgdd;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x4e24

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(I)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgda;->zzb(Ljava/lang/String;Z)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicn;->zzb()Lcom/google/android/gms/internal/ads/zzicn;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcw;->zzb([BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbcw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcw;->zza()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzc()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcw;->zza()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zza()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzg:Lcom/google/android/gms/internal/ads/zzglw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzglw;->zza(Lcom/google/android/gms/internal/ads/zzbcw;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x4e26

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    const/16 p1, 0xc

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(I)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzges;->zzd()Lcom/google/android/gms/internal/ads/zzger;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgeu;->zze()Lcom/google/android/gms/internal/ads/zzget;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcw;->zza()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb()Lcom/google/android/gms/internal/ads/zzbde;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzget;->zzb(Lcom/google/android/gms/internal/ads/zzbde;)Lcom/google/android/gms/internal/ads/zzget;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzger;->zzb(Lcom/google/android/gms/internal/ads/zzget;)Lcom/google/android/gms/internal/ads/zzger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcw;->zza()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzd()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzger;->zzc(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzger;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzger;->zze(I)Lcom/google/android/gms/internal/ads/zzger;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzges;

    goto :goto_2

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(I)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v1, 0x4e25

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zzd(ILjava/lang/Throwable;)V

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(I)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final synthetic zzc(Ljava/net/UnknownHostException;)Lcom/google/android/gms/internal/ads/zzges;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x4e27

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    const/16 p1, 0xd

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(I)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd(Ljava/net/SocketException;)Lcom/google/android/gms/internal/ads/zzges;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzglu;->zzf:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x4e28

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    const/16 p1, 0xd

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzglu;->zze(I)Lcom/google/android/gms/internal/ads/zzges;

    move-result-object p1

    return-object p1
.end method
