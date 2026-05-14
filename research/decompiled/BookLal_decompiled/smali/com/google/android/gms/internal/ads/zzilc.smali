.class public Lcom/google/android/gms/internal/ads/zzilc;
.super Lcom/google/android/gms/internal/ads/zzilf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatz;


# instance fields
.field protected final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzilf;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzilc;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzilc;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzilg;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzatw;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzilg;->zzc()J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzilf;->zzc:Lcom/google/android/gms/internal/ads/zzilg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzilg;->zzc()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzilf;->zze:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzilg;->zzc()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzilg;->zzd(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzilg;->zzc()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzilf;->zzf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzilf;->zzb:Lcom/google/android/gms/internal/ads/zzatw;

    return-void
.end method
