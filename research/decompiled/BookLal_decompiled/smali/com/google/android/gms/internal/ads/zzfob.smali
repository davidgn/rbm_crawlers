.class final Lcom/google/android/gms/internal/ads/zzfob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnw;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfog;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfog;Lcom/google/android/gms/internal/ads/zzfnw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfob;->zza:Lcom/google/android/gms/internal/ads/zzfnw;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfob;->zzb:Lcom/google/android/gms/internal/ads/zzfog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfob;->zzb:Lcom/google/android/gms/internal/ads/zzfog;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg()Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfob;->zza:Lcom/google/android/gms/internal/ads/zzfnw;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfoi;->zzc(Lcom/google/android/gms/internal/ads/zzfnw;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfob;->zzb:Lcom/google/android/gms/internal/ads/zzfog;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfog;->zza:Lcom/google/android/gms/internal/ads/zzfoh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg()Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfob;->zza:Lcom/google/android/gms/internal/ads/zzfnw;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoi;->zzd(Lcom/google/android/gms/internal/ads/zzfnw;)V

    return-void
.end method
