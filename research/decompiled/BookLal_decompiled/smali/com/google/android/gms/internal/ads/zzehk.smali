.class public final Lcom/google/android/gms/internal/ads/zzehk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbtg;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzehq;

.field public final zzb:Lorg/json/JSONObject;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzehj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzehk;->zzd:Lcom/google/android/gms/internal/ads/zzbtg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzehq;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehk;->zza:Lcom/google/android/gms/internal/ads/zzehq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehk;->zzb:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehk;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    return-void
.end method
