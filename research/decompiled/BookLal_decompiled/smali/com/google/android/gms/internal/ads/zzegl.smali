.class public final Lcom/google/android/gms/internal/ads/zzegl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmo;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcmo;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zza:Lcom/google/android/gms/internal/ads/zzcmo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzegk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzegk;-><init>(Lcom/google/android/gms/internal/ads/zzegl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzc:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegl;->zza:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmo;->zzh()Lcom/google/android/gms/internal/ads/zzegn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegl;->zzb:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzegn;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzegn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzegn;->zza()Lcom/google/android/gms/internal/ads/zzego;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzego;->zza()Lcom/google/android/gms/internal/ads/zzegs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzegs;->zza()V

    return-void
.end method
