.class public final Lcom/google/android/gms/internal/ads/zzenc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdwh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenc;->zza:Lcom/google/android/gms/internal/ads/zzdwh;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzela;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenc;->zza:Lcom/google/android/gms/internal/ads/zzdwh;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwh;->zza(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzflb;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzemm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzela;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzela;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzddg;Ljava/lang/String;)V

    return-object v1
.end method
