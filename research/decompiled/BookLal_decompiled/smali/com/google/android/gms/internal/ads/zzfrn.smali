.class final synthetic Lcom/google/android/gms/internal/ads/zzfrn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfrq;Lcom/google/android/gms/internal/ads/zzftc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrn;->zza:Lcom/google/android/gms/internal/ads/zzfrq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrn;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrn;->zza:Lcom/google/android/gms/internal/ads/zzfrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrn;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrq;->zzo(Lcom/google/android/gms/internal/ads/zzftc;)V

    return-void
.end method
