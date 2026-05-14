.class final Lcom/google/android/gms/internal/ads/zzgjs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgnx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgli;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzglz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgph;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgdl;

.field private final zzf:Z

.field private final zzg:J

.field private final zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgnx;Lcom/google/android/gms/internal/ads/zzgli;Lcom/google/android/gms/internal/ads/zzglz;Lcom/google/android/gms/internal/ads/zzgph;Lcom/google/android/gms/internal/ads/zzgdl;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Lcom/google/android/gms/internal/ads/zzgnx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgli;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzc:Lcom/google/android/gms/internal/ads/zzglz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zze:Lcom/google/android/gms/internal/ads/zzgdl;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzf:Z

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzg:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzh:J

    return-void
.end method

.method private final zzh(I)LN2/o;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzb:Lcom/google/android/gms/internal/ads/zzgli;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zza()LN2/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgjj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgjj;-><init>(Lcom/google/android/gms/internal/ads/zzgjs;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgjk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgjk;-><init>(Lcom/google/android/gms/internal/ads/zzgjs;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjl;->zza:Lcom/google/android/gms/internal/ads/zzgjl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjm;->zza:Lcom/google/android/gms/internal/ads/zzgjm;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgje;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzgjn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgjf;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgjo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgjo;-><init>(Lcom/google/android/gms/internal/ads/zzgjs;I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    const-class v2, Lcom/google/android/gms/internal/ads/zzgjd;

    invoke-static {v0, v2, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhan;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    return-object p1
.end method


# virtual methods
.method public final zza(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zze:Lcom/google/android/gms/internal/ads/zzgdl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgjq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgjq;-><init>(Lcom/google/android/gms/internal/ads/zzgjs;)V

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgjs;->zzb()LN2/o;

    return-void
.end method

.method public final zzb()LN2/o;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzc:Lcom/google/android/gms/internal/ads/zzglz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzglz;->zzb()LN2/o;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjh;->zza:Lcom/google/android/gms/internal/ads/zzgjh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Ljava/lang/Throwable;

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzg(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zza:Lcom/google/android/gms/internal/ads/zzgnx;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgjg;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgjg;-><init>(Lcom/google/android/gms/internal/ads/zzgnx;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgji;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgji;-><init>(Lcom/google/android/gms/internal/ads/zzgjs;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhan;

    return-object v0
.end method

.method public final synthetic zzc(Ljava/lang/Boolean;)LN2/o;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjr;->zzb:Lcom/google/android/gms/internal/ads/zzgjr;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgjs;->zzh(I)LN2/o;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzges;)Lcom/google/android/gms/internal/ads/zzges;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    const/16 v2, 0x3ed

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgph;->zzc(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgje;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgje;-><init>(I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgph;->zzc(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgjd;-><init>(I)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzd:Lcom/google/android/gms/internal/ads/zzgph;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzgph;->zzc(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgjf;-><init>(I)V

    throw v0

    :cond_2
    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzges;)LN2/o;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzc:Lcom/google/android/gms/internal/ads/zzglz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zza()Lcom/google/android/gms/internal/ads/zzgeu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzb()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzz()[B

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzglz;->zzd(Lcom/google/android/gms/internal/ads/zzgeu;[B)LN2/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzj()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzc:Lcom/google/android/gms/internal/ads/zzglz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zza()Lcom/google/android/gms/internal/ads/zzgeu;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzc()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzibz;->zzz()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzges;->zzb()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibz;->zzz()[B

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzglz;->zzc(Lcom/google/android/gms/internal/ads/zzgeu;[B[B)LN2/o;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unreachable"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final synthetic zzf(ILcom/google/android/gms/internal/ads/zzgjd;)Lcom/google/android/gms/internal/ads/zzgjr;
    .locals 7

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzf:Z

    if-eqz p2, :cond_0

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzg:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zze:Lcom/google/android/gms/internal/ads/zzgdl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgjp;-><init>(Lcom/google/android/gms/internal/ads/zzgjs;I)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgjs;->zzh:J

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-interface {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdl;->zza(Ljava/lang/Runnable;J)V

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgjr;->zzf:Lcom/google/android/gms/internal/ads/zzgjr;

    return-object p1
.end method

.method public final synthetic zzg(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgjs;->zzh(I)LN2/o;

    return-void
.end method
