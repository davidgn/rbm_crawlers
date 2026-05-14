.class final synthetic Lcom/google/android/gms/internal/ads/zzlx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzly;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgvj;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzly;Lcom/google/android/gms/internal/ads/zzgvj;Lcom/google/android/gms/internal/ads/zzwt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzly;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzgvj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzc:Lcom/google/android/gms/internal/ads/zzwt;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlx;->zza:Lcom/google/android/gms/internal/ads/zzly;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzb:Lcom/google/android/gms/internal/ads/zzgvj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlx;->zzc:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzly;->zzz(Lcom/google/android/gms/internal/ads/zzgvj;Lcom/google/android/gms/internal/ads/zzwt;)V

    return-void
.end method
