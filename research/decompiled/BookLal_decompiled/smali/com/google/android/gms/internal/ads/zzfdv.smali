.class public final Lcom/google/android/gms/internal/ads/zzfdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfdu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfdu;)Lcom/google/android/gms/internal/ads/zzfdv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfdv;-><init>(Lcom/google/android/gms/internal/ads/zzfdu;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzfdu;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfdu;->zza()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzimc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfdv;->zzd(Lcom/google/android/gms/internal/ads/zzfdu;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfdv;->zzd(Lcom/google/android/gms/internal/ads/zzfdu;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
