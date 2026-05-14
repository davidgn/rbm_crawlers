.class public final Lcom/google/android/gms/internal/ads/zzdbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzimd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdbg;Lcom/google/android/gms/internal/ads/zzimd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbh;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbh;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdbg;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzdbh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdbh;-><init>(Lcom/google/android/gms/internal/ads/zzdbg;Lcom/google/android/gms/internal/ads/zzimd;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbh;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbh;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object v0

    return-object v0
.end method
