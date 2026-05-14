.class final synthetic Lcom/google/android/gms/internal/ads/zzex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzex;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzex;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfb;->zzb(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
