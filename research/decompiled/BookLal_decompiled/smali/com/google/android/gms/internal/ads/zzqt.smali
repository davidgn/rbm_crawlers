.class public final Lcom/google/android/gms/internal/ads/zzqt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:Z

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/ads/zzd;

.field public final zzg:I

.field public final zzh:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqs;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzi()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzj()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzk()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzd:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzl()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzm()Lcom/google/android/gms/internal/ads/zzd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzn()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzg:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzo()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzh:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzqt;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqt;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzg:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzg:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzh:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzh:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzd;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzg:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqt;->zzh:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v4, v11

    move-object v5, v11

    move-object v10, v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
