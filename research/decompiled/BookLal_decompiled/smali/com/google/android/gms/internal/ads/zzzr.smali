.class final Lcom/google/android/gms/internal/ads/zzzr;
.super Lcom/google/android/gms/internal/ads/zzaab;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzzu;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(ILcom/google/android/gms/internal/ads/zzbg;I)V

    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzzu;->zzV:Z

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzmv;->zzac(IZ)Z

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzr;->zze:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzd:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzv;->zzc()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzr;->zzf:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzzr;->zzb(Lcom/google/android/gms/internal/ads/zzzr;)I

    move-result p1

    return p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzr;->zze:I

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzzr;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzzr;->zzf:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzzr;->zzf:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaab;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzr;

    const/4 p1, 0x0

    return p1
.end method
