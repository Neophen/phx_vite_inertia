<script setup name="About" lang="ts">
import vitejs from '../assets/vitejs.svg'

const { title } = defineProps<{
  title: string
  homePath: string
}>()
</script>

<template>
  <div class="h-screen space-y-4 bg-slate-100 p-8">
    <div class="flex gap-4">
      <h1 class="text-3xl font-bold">
        {{ title }}
      </h1>
      <XLink :href="homePath">
        Home
      </XLink>
    </div>
    <div class="space-y-8">
      <div class="flex items-center gap-4">
        <XIcon icon="logos:milligram" size="5xl" />
        <p>Elixir: Functional language + OTP Simplicity</p>
      </div>
      <div class="flex items-center gap-4">
        <XIcon icon="logos:phoenix" size="5xl" />
        <p>Phoenix: Backend + Realtime Simplicity</p>
      </div>
      <div class="flex items-center gap-4">
        <XIcon icon="logos:vue" size="5xl" />
        <p>Vue: Frontend Simplicity</p>
      </div>
      <div class="flex items-center gap-4">
        <img :src="vitejs" alt="Vite Logo" class="h-12">
        <p>Vite: Bundling Simplicity</p>
      </div>
      <div class="flex items-center gap-4">
        <XIcon icon="logos:tailwindcss-icon" size="5xl" />
        <p>Simplicity in CSS</p>
      </div>
      <div class="flex items-center gap-4">
        <p>Inertia Js: Modern Monolith Simplicity</p>
      </div>
    </div>
  </div>
</template>
