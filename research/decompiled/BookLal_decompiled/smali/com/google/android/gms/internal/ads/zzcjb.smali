.class final synthetic Lcom/google/android/gms/internal/ads/zzcjb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhh;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzhh;

.field private final synthetic zzb:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhh;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzb:[B

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzhi;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzcjh;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zza:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhh;->zza()Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcjb;->zzb:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhd;-><init>([B)V

    array-length v2, v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzciv;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzciv;-><init>(Lcom/google/android/gms/internal/ads/zzhi;ILcom/google/android/gms/internal/ads/zzhi;)V

    return-object v3
.end method
