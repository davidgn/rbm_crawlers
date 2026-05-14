.class final Lcom/google/android/gms/internal/ads/zzzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaaj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzy;Lcom/google/android/gms/internal/ads/zzaaj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzw;->zza:Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zza:Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzl()V

    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzw;->zza:Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzl()V

    return-void
.end method
