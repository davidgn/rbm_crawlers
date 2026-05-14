.class final synthetic Lcom/google/android/gms/internal/ads/zzgdg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgdk;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Landroidx/concurrent/futures/j;

.field private final synthetic zzd:Z

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgdk;Ljava/lang/String;Landroidx/concurrent/futures/j;ZLjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zza:Lcom/google/android/gms/internal/ads/zzgdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzc:Landroidx/concurrent/futures/j;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzd:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzf:[B

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zza:Lcom/google/android/gms/internal/ads/zzgdk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzc:Landroidx/concurrent/futures/j;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzd:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgdg;->zzf:[B

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgdk;->zzd(Ljava/lang/String;Landroidx/concurrent/futures/j;ZLjava/lang/String;[B)V

    return-void
.end method
