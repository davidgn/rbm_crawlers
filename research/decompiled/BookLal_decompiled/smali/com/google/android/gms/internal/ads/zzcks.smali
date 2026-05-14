.class final synthetic Lcom/google/android/gms/internal/ads/zzcks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzckv;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzekq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzckv;Lcom/google/android/gms/internal/ads/zzekq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zza:Lcom/google/android/gms/internal/ads/zzckv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzb:Lcom/google/android/gms/internal/ads/zzekq;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zza:Lcom/google/android/gms/internal/ads/zzckv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzckt;-><init>(Lcom/google/android/gms/internal/ads/zzckv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcks;->zzb:Lcom/google/android/gms/internal/ads/zzekq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzekq;->zze(Lcom/google/android/gms/internal/ads/zzftw;)V

    return-void
.end method
