.class public final Lcom/google/android/gms/internal/ads/zzdqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdoy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpd;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdoy;Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zzb:Lcom/google/android/gms/internal/ads/zzdpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zzc:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zzd:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqx;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zzc:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqy;->zzb(Lcom/google/android/gms/internal/ads/zzcjz;)V

    return-void
.end method

.method public final zzdr()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zzb:Lcom/google/android/gms/internal/ads/zzdpd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpd;->zzd()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzZ()Lcom/google/android/gms/internal/ads/zzeks;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzX()LN2/o;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhv;->zzgr:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzX()LN2/o;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzY()Lcom/google/android/gms/internal/ads/zzcfb;

    move-result-object v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [LN2/o;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzq([LN2/o;)LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdqw;-><init>(Lcom/google/android/gms/internal/ads/zzdqy;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqy;->zzd:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzW()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoy;->zzT()Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqy;->zzb(Lcom/google/android/gms/internal/ads/zzcjz;)V

    :cond_4
    :goto_1
    return-void
.end method
