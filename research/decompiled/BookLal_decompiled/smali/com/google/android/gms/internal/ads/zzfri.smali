.class final synthetic Lcom/google/android/gms/internal/ads/zzfri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftc;

.field private final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfrq;Lcom/google/android/gms/internal/ads/zzftc;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zza:Lcom/google/android/gms/internal/ads/zzfrq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfri;->zza:Lcom/google/android/gms/internal/ads/zzfrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfri;->zzc:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfrq;->zzj(Lcom/google/android/gms/internal/ads/zzftc;I)V

    return-void
.end method
