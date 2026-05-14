.class public final Lcom/google/android/gms/internal/ads/zzwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzws;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzwf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzafl;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzafl;Lcom/google/android/gms/internal/ads/zzamt;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zza(Lcom/google/android/gms/internal/ads/zzhh;)V

    return-void
.end method
