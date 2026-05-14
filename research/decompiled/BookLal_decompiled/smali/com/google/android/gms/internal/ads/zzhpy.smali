.class public final Lcom/google/android/gms/internal/ads/zzhpy;
.super Lcom/google/android/gms/internal/ads/zzicx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpz;->zze()Lcom/google/android/gms/internal/ads/zzhpz;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzicx;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzhpy;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhpz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhpz;->zzd(I)V

    return-object p0
.end method
