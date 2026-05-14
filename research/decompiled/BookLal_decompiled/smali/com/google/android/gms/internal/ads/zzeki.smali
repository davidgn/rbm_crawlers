.class final synthetic Lcom/google/android/gms/internal/ads/zzeki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzftx;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzftx;Lcom/google/android/gms/internal/ads/zzftw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeki;->zza:Lcom/google/android/gms/internal/ads/zzftx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzb:Lcom/google/android/gms/internal/ads/zzftw;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeki;->zza:Lcom/google/android/gms/internal/ads/zzftx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeki;->zzb:Lcom/google/android/gms/internal/ads/zzftw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzftx;->zzb(Lcom/google/android/gms/internal/ads/zzftw;)V

    return-void
.end method
