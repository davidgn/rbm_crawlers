.class final synthetic Lcom/google/android/gms/internal/ads/zzuz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzvc;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzlp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzlp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuz;->zza:Lcom/google/android/gms/internal/ads/zzvc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzb:Lcom/google/android/gms/internal/ads/zzlp;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuz;->zza:Lcom/google/android/gms/internal/ads/zzvc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuz;->zzb:Lcom/google/android/gms/internal/ads/zzlp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzbk(Lcom/google/android/gms/internal/ads/zzlp;)V

    return-void
.end method
