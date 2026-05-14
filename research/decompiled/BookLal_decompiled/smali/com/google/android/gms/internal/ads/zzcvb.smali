.class public final Lcom/google/android/gms/internal/ads/zzcvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcux;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcux;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcux;)Lcom/google/android/gms/internal/ads/zzcvb;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcvb;-><init>(Lcom/google/android/gms/internal/ads/zzcux;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcww;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcux;->zzc()Lcom/google/android/gms/internal/ads/zzcww;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvb;->zza:Lcom/google/android/gms/internal/ads/zzcux;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcux;->zzc()Lcom/google/android/gms/internal/ads/zzcww;

    move-result-object v0

    return-object v0
.end method
