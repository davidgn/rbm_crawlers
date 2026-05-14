.class final synthetic Lcom/google/android/gms/internal/ads/zzcte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzctf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzctf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcte;->zza:Lcom/google/android/gms/internal/ads/zzctf;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcte;->zza:Lcom/google/android/gms/internal/ads/zzctf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzctf;->zza:Lcom/google/android/gms/internal/ads/zzctg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctg;->zzg()Lcom/google/android/gms/internal/ads/zzctl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctl;->zzm()V

    return-void
.end method
