.class public final Lcom/google/android/gms/internal/ads/zzedq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzefa;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzilo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzefa;Lcom/google/android/gms/internal/ads/zzilo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedq;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzc:Lcom/google/android/gms/internal/ads/zzefa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzd:Lcom/google/android/gms/internal/ads/zzilo;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzd:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefw;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzefw;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedq;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzedp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzedp;-><init>(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzcai;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbf;->zzc(Ljava/util/concurrent/Callable;)LN2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    const-class v2, Ljava/util/concurrent/ExecutionException;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzedm;->zza:Lcom/google/android/gms/internal/ads/zzedm;

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhav;->zzh(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzedn;-><init>(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzcai;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefw;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzh(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcai;)Lcom/google/android/gms/internal/ads/zzefx;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzc:Lcom/google/android/gms/internal/ads/zzefa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzefa;->zza(Lcom/google/android/gms/internal/ads/zzcai;)LN2/o;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzgD:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefx;

    return-object p1
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzcai;ILcom/google/android/gms/internal/ads/zzefw;)LN2/o;
    .locals 2

    if-eqz p1, :cond_0

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzcai;->zzm:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    const-string v0, "ls"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzd:Lcom/google/android/gms/internal/ads/zzilo;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzilo;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzehn;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzehn;->zzb(Lcom/google/android/gms/internal/ads/zzcai;I)LN2/o;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzedo;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzedo;-><init>(Lcom/google/android/gms/internal/ads/zzcai;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method
