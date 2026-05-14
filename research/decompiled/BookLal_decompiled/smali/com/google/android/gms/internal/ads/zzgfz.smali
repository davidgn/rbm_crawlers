.class public final Lcom/google/android/gms/internal/ads/zzgfz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgge;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaww;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzggx;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgph;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzgge;Lcom/google/android/gms/internal/ads/zzggx;Lcom/google/android/gms/internal/ads/zzgdc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaww;Lcom/google/android/gms/internal/ads/zzimj;Lcom/google/android/gms/internal/ads/zzimj;Lcom/google/android/gms/internal/ads/zzimj;Lcom/google/android/gms/internal/ads/zzgph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzb:Lcom/google/android/gms/internal/ads/zzgge;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzf:Lcom/google/android/gms/internal/ads/zzggx;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zze:Lcom/google/android/gms/internal/ads/zzaww;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzg:Lcom/google/android/gms/internal/ads/zzgph;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    check-cast p9, Lcom/google/android/gms/internal/ads/zzimg;

    invoke-virtual {p9}, Lcom/google/android/gms/internal/ads/zzimg;->zzc()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzc:Ljava/util/Set;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    check-cast p8, Lcom/google/android/gms/internal/ads/zzimg;

    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzimg;->zzc()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzc:Ljava/util/Set;

    return-void

    :cond_2
    check-cast p7, Lcom/google/android/gms/internal/ads/zzimg;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzimg;->zzc()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzc:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzb:Lcom/google/android/gms/internal/ads/zzgge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgge;->zzc()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzf:Lcom/google/android/gms/internal/ads/zzggx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzggx;->zzb()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgfy;-><init>(Lcom/google/android/gms/internal/ads/zzgfz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzd(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzc:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgia;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzhbf;->zzc(Ljava/util/concurrent/Callable;)LN2/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzn(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzhau;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>(Lcom/google/android/gms/internal/ads/zzgfz;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhau;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzb:Lcom/google/android/gms/internal/ads/zzgge;

    const/16 v2, 0x4000

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgge;->zzg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzc()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgfx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgfx;-><init>(Lcom/google/android/gms/internal/ads/zzgfz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzg:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgph;->zza(I)Lcom/google/android/gms/internal/ads/zzgpf;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpf;->zza()V

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpf;->zzc()V

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpf;->zzb(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpf;->zzc()V

    throw v0
.end method

.method public final synthetic zzd()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zze:Lcom/google/android/gms/internal/ads/zzaww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgfz;->zzb:Lcom/google/android/gms/internal/ads/zzgge;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgge;->zzf([BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object v0

    const/16 v3, 0xb

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x1000

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgge;->zzg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
