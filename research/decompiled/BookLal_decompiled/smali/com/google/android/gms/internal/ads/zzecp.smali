.class final Lcom/google/android/gms/internal/ads/zzecp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzect;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzect;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecp;->zza:Lcom/google/android/gms/internal/ads/zzect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzebk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzebk;->zzf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecp;->zza:Lcom/google/android/gms/internal/ads/zzect;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzect;->zzi()Lcom/google/android/gms/internal/ads/zzech;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzech;->zzn()V

    return-void
.end method
