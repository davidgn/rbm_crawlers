.class public final Lcom/google/android/gms/internal/ads/zzdwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzdwn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zzc()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdwm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
