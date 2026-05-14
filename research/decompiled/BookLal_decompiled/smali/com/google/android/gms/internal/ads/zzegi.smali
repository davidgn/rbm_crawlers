.class public final Lcom/google/android/gms/internal/ads/zzegi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzefn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzilo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzefn;Lcom/google/android/gms/internal/ads/zzilo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegi;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzb:Lcom/google/android/gms/internal/ads/zzefn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzc:Lcom/google/android/gms/internal/ads/zzilo;

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzhad;)LN2/o;
    .locals 3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzd:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzefw;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzefw;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzefy;->zza(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegi;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    const-class v1, Ljava/util/concurrent/ExecutionException;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzegh;->zza:Lcom/google/android/gms/internal/ads/zzegh;

    invoke-static {p2, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzh(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegi;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhan;->zzw(LN2/o;)Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzega;->zza:Lcom/google/android/gms/internal/ads/zzega;

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhan;

    invoke-static {p2, p4, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhan;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegb;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzegb;-><init>(Lcom/google/android/gms/internal/ads/zzegi;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzhad;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-static {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzh(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhan;

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzegc;-><init>(Lcom/google/android/gms/internal/ads/zzcai;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzb:Lcom/google/android/gms/internal/ads/zzefn;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzefz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzefz;-><init>(Lcom/google/android/gms/internal/ads/zzefn;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzegd;-><init>(Lcom/google/android/gms/internal/ads/zzegi;)V

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzegi;->zzg(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzhad;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzege;->zza:Lcom/google/android/gms/internal/ads/zzege;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzegf;-><init>(Lcom/google/android/gms/internal/ads/zzegi;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzegg;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzegg;-><init>(Lcom/google/android/gms/internal/ads/zzegi;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzegi;->zzg(Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzhad;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzcai;Lcom/google/android/gms/internal/ads/zzhad;Lcom/google/android/gms/internal/ads/zzefw;)LN2/o;
    .locals 0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzegi;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzefy;->zza(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzc:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzehn;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzehn;->zzc(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzb:Lcom/google/android/gms/internal/ads/zzefn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzh:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefn;->zzd(Ljava/lang/String;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegi;->zzc:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzehn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzh:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzehn;->zzd(Ljava/lang/String;)LN2/o;

    move-result-object p1

    return-object p1
.end method
