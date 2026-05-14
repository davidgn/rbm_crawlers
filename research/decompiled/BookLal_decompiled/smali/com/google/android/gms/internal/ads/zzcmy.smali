.class public final Lcom/google/android/gms/internal/ads/zzcmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcmq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcmq;)Lcom/google/android/gms/internal/ads/zzcmy;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcmy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcmy;-><init>(Lcom/google/android/gms/internal/ads/zzcmq;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Ljava/lang/ref/WeakReference;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcmq;->zzc()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzimc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmy;->zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmy;->zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method
