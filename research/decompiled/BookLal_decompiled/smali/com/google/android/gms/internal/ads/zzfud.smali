.class final Lcom/google/android/gms/internal/ads/zzfud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:F

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfue;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfue;F)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfud;->zza:F

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfud;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfud;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfue;->zza:Lcom/google/android/gms/internal/ads/zzfuf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuf;->zzg()Lcom/google/android/gms/internal/ads/zzfur;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfud;->zza:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfur;->zzf(F)V

    return-void
.end method
