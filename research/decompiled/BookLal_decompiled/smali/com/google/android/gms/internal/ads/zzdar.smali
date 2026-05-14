.class public final Lcom/google/android/gms/internal/ads/zzdar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzimd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdar;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzdar;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdar;-><init>(Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdar;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcup;->zza()Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object v0

    return-object v0
.end method
