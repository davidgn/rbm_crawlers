.class final Lcom/google/android/gms/internal/ads/zzxw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzxz;

.field private final zzb:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzxz;I)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:I

    return v0
.end method

.method public final zzb()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxz;->zzp(I)Z

    move-result v0

    return v0
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxz;->zzq(I)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzxz;->zzs(ILcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I

    move-result p1

    return p1
.end method

.method public final zze(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxw;->zza:Lcom/google/android/gms/internal/ads/zzxz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxw;->zzb:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzxz;->zzt(IJ)I

    move-result p1

    return p1
.end method
