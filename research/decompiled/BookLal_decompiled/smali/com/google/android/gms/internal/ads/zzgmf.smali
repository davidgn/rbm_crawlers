.class final Lcom/google/android/gms/internal/ads/zzgmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgma;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgdt;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgdt;

.field private final zze:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzilo;

.field private final zzg:Ljava/io/File;

.field private final zzh:Ljava/util/concurrent/ExecutorService;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzgph;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgdt;Lcom/google/android/gms/internal/ads/zzgdt;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/internal/ads/zzgdt;Lcom/google/android/gms/internal/ads/zzgdt;Lcom/google/android/gms/internal/ads/zzilo;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zza:Lcom/google/android/gms/internal/ads/zzgdt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzc:Lcom/google/android/gms/internal/ads/zzgdt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zze:Lcom/google/android/gms/internal/ads/zzilo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzd:Lcom/google/android/gms/internal/ads/zzgdt;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzf:Lcom/google/android/gms/internal/ads/zzilo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzg:Ljava/io/File;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzh:Ljava/util/concurrent/ExecutorService;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    return-void
.end method

.method private final zzj([B)LN2/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzd:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdt;->zzc(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v1, 0x3bc9

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object p1
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzgeu;)LN2/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdt;->zzc(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v1, 0x3bc7

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object p1
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgme;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgme;-><init>(Lcom/google/android/gms/internal/ads/zzgmf;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzh:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()LN2/o;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zza:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zzb()LN2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x3bc6

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgeu;[B[B)LN2/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzf:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgdt;->zzc(Ljava/lang/Object;)LN2/o;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v1, 0x3bcb

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgmf;->zzj([B)LN2/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [LN2/o;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzl([LN2/o;)LN2/o;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzgmd;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzgmd;-><init>(Lcom/google/android/gms/internal/ads/zzgmf;Lcom/google/android/gms/internal/ads/zzgeu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhan;

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgeu;[B)LN2/o;
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgmf;->zzj([B)LN2/o;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgmc;-><init>(Lcom/google/android/gms/internal/ads/zzgmf;Lcom/google/android/gms/internal/ads/zzgeu;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhan;

    return-object p1
.end method

.method public final zze()LN2/o;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zza:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zzb()LN2/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgmb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgmb;-><init>(Lcom/google/android/gms/internal/ads/zzgmf;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x3bd2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object v0
.end method

.method public final synthetic zzf()Z
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzf:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzd:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto/16 :goto_7

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzf:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zze:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfxs;->zze(Ljava/io/File;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgyt;->zzb(Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzgyt;->zzc(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzd:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzc:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgyt;->zzb(Ljava/io/File;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzgyt;->zzc(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_2
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zza:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyt;->zzb(Ljava/io/File;)V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyt;->zzc(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzf:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzd:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v3, 0x1

    goto :goto_7

    :goto_4
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x3bd1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzd(ILjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    goto/16 :goto_0

    :goto_5
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x3bd0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzd(ILjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    goto/16 :goto_0

    :goto_6
    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzi:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x3bcf

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzd(ILjava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    goto/16 :goto_0

    :goto_7
    return v3

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzf:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzd:Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzgeu;)Lcom/google/android/gms/internal/ads/zzfxq;
    .locals 4

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgeu;->zzg()Lcom/google/android/gms/internal/ads/zzgeu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgeu;->zza()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zze:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgdt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzc:Lcom/google/android/gms/internal/ads/zzgdt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgmf;->zzg:Ljava/io/File;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfxq;-><init>(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzgeu;Ljava/lang/Void;)LN2/o;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzk(Lcom/google/android/gms/internal/ads/zzgeu;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzgeu;Ljava/util/List;)LN2/o;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgmf;->zzk(Lcom/google/android/gms/internal/ads/zzgeu;)LN2/o;

    move-result-object p1

    return-object p1
.end method
