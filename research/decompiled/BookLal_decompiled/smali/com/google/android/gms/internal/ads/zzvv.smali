.class public final Lcom/google/android/gms/internal/ads/zzvv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafl;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaff;

.field private zzc:Lcom/google/android/gms/internal/ads/zzafg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zza:Lcom/google/android/gms/internal/ads/zzafl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzj;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzafi;)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaew;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaew;-><init>(Lcom/google/android/gms/internal/ads/zzj;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzc:Lcom/google/android/gms/internal/ads/zzafg;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zza:Lcom/google/android/gms/internal/ads/zzafl;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzafl;->zzb(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzaff;

    move-result-object p1

    array-length p3, p1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgvm;->zzv(I)Lcom/google/android/gms/internal/ads/zzgvj;

    move-result-object p6

    const/4 p7, 0x1

    const/4 v0, 0x0

    if-ne p3, p7, :cond_1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    goto :goto_7

    :cond_1
    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_7

    aget-object v2, p1, v1

    :try_start_0
    invoke-interface {v2, v6}, Lcom/google/android/gms/internal/ads/zzaff;->zza(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzaff;->zzb()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p6, v2}, Lcom/google/android/gms/internal/ads/zzgvj;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvj;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    if-nez v2, :cond_3

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_4

    :cond_3
    :goto_1
    move v2, p7

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    goto :goto_5

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    if-nez p2, :cond_6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide p2

    cmp-long p2, p2, p4

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    move p7, v0

    :cond_6
    :goto_4
    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    throw p1

    :catch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    if-nez v2, :cond_3

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-nez v2, :cond_4

    goto :goto_1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_6
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    if-eqz p3, :cond_8

    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-interface {p1, p8}, Lcom/google/android/gms/internal/ads/zzaff;->zzc(Lcom/google/android/gms/internal/ads/zzafi;)V

    return-void

    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzr([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    sget-object p4, Lcom/google/android/gms/internal/ads/zzvu;->zza:Lcom/google/android/gms/internal/ads/zzvu;

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/ads/zzgwm;->zzc(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgsa;)Ljava/util/List;

    move-result-object p1

    const-string p4, ", "

    invoke-static {p1, p4}, Lcom/google/android/gms/internal/ads/zzgsd;->zzd(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x3a

    invoke-direct {p5, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p4, "None of the available extractors ("

    const-string p7, ") could read the stream."

    invoke-static {p5, p4, p1, p7}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzgvj;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzyx;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p3
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaff;->zzf()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzc:Lcom/google/android/gms/internal/ads/zzafg;

    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaka;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaka;->zzh()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzc:Lcom/google/android/gms/internal/ads/zzafg;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zze(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaff;->zze(JJ)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzb:Lcom/google/android/gms/internal/ads/zzaff;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvv;->zzc:Lcom/google/android/gms/internal/ads/zzafg;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaff;->zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
