.class final Lcom/google/android/gms/internal/ads/zzdvc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzn;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdvn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvn;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvc;->zza:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvc;->zza:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvn;->zzb()Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdex;->zza()V

    return-void
.end method

.method public final zzdl()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvc;->zza:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvn;->zzb()Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdex;->zzb()V

    return-void
.end method
