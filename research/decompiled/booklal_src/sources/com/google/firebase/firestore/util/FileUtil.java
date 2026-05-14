package com.google.firebase.firestore.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
/* loaded from: classes2.dex */
public class FileUtil {

    /* loaded from: classes2.dex */
    public static class DefaultFileDeleter {
        private DefaultFileDeleter() {
        }

        public static void delete(File file) {
            try {
                Files.deleteIfExists(file.toPath());
            } catch (IOException e5) {
                throw new IOException("Failed to delete file " + file + ": " + e5);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class LegacyFileDeleter {
        private LegacyFileDeleter() {
        }

        public static void delete(File file) {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("Failed to delete file " + file);
        }
    }

    public static void delete(File file) {
        DefaultFileDeleter.delete(file);
    }
}
