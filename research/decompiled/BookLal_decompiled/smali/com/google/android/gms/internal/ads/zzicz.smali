.class public abstract Lcom/google/android/gms/internal/ads/zzicz;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzicz<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzidd<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zziep;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzics;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzics;->zza()Lcom/google/android/gms/internal/ads/zzics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    return-void
.end method
